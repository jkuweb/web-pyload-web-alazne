'use client'
import { Button } from '@payloadcms/ui/elements/Button'
import React, { useEffect, useState } from 'react'

export const RedeployButton = () => {
  const [hasChanges, setHasChanges] = useState(false)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    const checkChanges = async () => {
      const res = await fetch('/api/has-pending-changes')
      const data = await res.json()
      setHasChanges(data.hasChanges)
      setLoading(false)
    }

    checkChanges()
  }, [])

  const handleClick = async () => {
    if (!confirm('Actualizar el frontend con los cambios publicados?')) return
    await fetch('/api/redeploy', { method: 'POST' })
    alert('Frontend en proceso de actualización')
  }

  if (loading || !hasChanges) return null

  return <Button onClick={handleClick}>Actualizar frontend</Button>
}
