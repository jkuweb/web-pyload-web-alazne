'use client'
import { Button } from '@payloadcms/ui/elements/Button'
import React from 'react'

export const RedeployButton = () => {
  const handleClick = async () => {
    if (!confirm('¿Publicar todos los cambios y actualizar el frontend?')) return

    await fetch('/api/redeploy', { method: 'POST' })
    alert('Frontend en proceso de actualización')
  }

  return <Button onClick={handleClick}>Actualizar frontend</Button>
}
