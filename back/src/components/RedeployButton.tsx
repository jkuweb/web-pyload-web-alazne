'use client'
import { Button } from '@payloadcms/ui/elements/Button'
import React, { useEffect, useState } from 'react'

export const RedeployButton = () => {
  // Estado para el número de drafts pendientes
  const [count, setCount] = useState<number | null>(null)
  const [loading, setLoading] = useState(true)

  // Hook para consultar drafts pendientes al cargar
  useEffect(() => {
    const fetchPending = async () => {
      try {
        const res = await fetch('/api/has-pending-changes')
        const data = await res.json()
        setCount(data.count)
      } catch (err) {
        console.error('Error fetching pending changes:', err)
        setCount(0)
      } finally {
        setLoading(false)
      }
    }

    fetchPending()
  }, [])

  const handleClick = async () => {
    if (count === null) return

    const confirmed = confirm(
      `Se actualizará el frontend con los cambios publicados.\nCambios pendientes: ${count}\n\n¿Continuar?`,
    )
    if (!confirmed) return

    try {
      await fetch('/api/redeploy', { method: 'POST' })
      alert('Frontend en proceso de actualización')
    } catch (err) {
      console.error('Error triggering redeploy:', err)
      alert('Error al actualizar frontend')
    }
  }

  const disabled = loading || !count || count === 0

  if (loading || count === null) return null

  return (
    <div style={{ padding: '0 1rem' }}>
      <Button onClick={handleClick} disabled={disabled} size="small">
        Actualizar frontend
      </Button>

      <div
        style={{
          marginTop: '0.25rem',
          fontSize: '0.75rem',
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
