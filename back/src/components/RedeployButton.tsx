'use client'
import { Button } from '@payloadcms/ui/elements/Button'
import React, { useEffect, useState } from 'react'

export const RedeployButton = () => {
  const [count, setCount] = useState<number | null>(null)
  const [loading, setLoading] = useState(true)

  const fetchPending = async () => {
    try {
      const res = await fetch('/api/has-pending-changes')
      const data = await res.json()
      setCount(data.count)
    } catch {
      setCount(0)
    } finally {
      setLoading(false)
    }
  }

  useEffect(() => {
    fetchPending() // primera carga

    const interval = setInterval(fetchPending, 5000) // cada 5s
    return () => clearInterval(interval) // limpiar al desmontar
  }, [])

  const handleClick = async () => {
    if (!count || count === 0) return

    const confirmed = confirm(
      `Se actualizará el frontend con ${count} cambios publicados.\n¿Continuar?`,
    )
    if (!confirmed) return

    try {
      await fetch('/api/redeploy', { method: 'POST' })
      alert('Frontend en proceso de actualización')
      setCount(0) // refresca UI inmediatamente
    } catch {
      alert('Error al actualizar frontend')
    }
  }

  const disabled = loading || !count || count === 0
  if (loading || count === null) return null

  return (
    <div style={{ padding: '0 1rem' }}>
      <Button onClick={handleClick} disabled={disabled} size="small">
        Actualizar Web
      </Button>
      <div
        style={{
          marginTop: '0.25rem',
          fontSize: '1.5rem',
          color: disabled ? '#4caf50' : '#d32f2f',
        }}
      >
        {count === 0
          ? 'No hay cambios pendientes'
          : `${count} cambio${count > 1 ? 's' : ''} pendiente${count > 1 ? 's' : ''}`}
      </div>
    </div>
  )
}
