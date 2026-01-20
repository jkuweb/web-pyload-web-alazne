'use client'
import { Button } from '@payloadcms/ui/elements/Button'
import React, { useEffect, useState } from 'react'

export const RedeployButton = () => {
  const [count, setCount] = useState<number | null>(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    const load = async () => {
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

    load()
  }, [])

  const handleClick = async () => {
    const confirmed = confirm(
      `Se actualizará el frontend con los cambios publicados.\nCambios pendientes: ${count}\n\n¿Continuar?`,
    )

    if (!confirmed) return

    await fetch('/api/redeploy', { method: 'POST' })
    alert('Frontend en proceso de actualización')
  }

  const disabled = loading || !count || count === 0

  return (
    <div style={{ padding: '0 1rem' }}>
      <Button onClick={handleClick} disabled={disabled} size="small">
        Actualizar frontend
      </Button>

      {!loading && (
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
      )}
    </div>
  )
}
