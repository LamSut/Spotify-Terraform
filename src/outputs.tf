output "domdom_id" {
  value       = "spotify:playlist:${spotify_playlist.domdom.id}"
  description = "Spotify playlist ID for Dom Dom"
}

output "vjp_id" {
  value       = "spotify:playlist:${spotify_playlist.vjp.id}"
  description = "Spotify playlist ID for VJP"
}

output "domdom_url" {
  value       = "https://open.spotify.com/playlist/${spotify_playlist.domdom.id}"
  description = "Visit this URL in your browser to listen to the playlist"
}

output "vjp_url" {
  value       = "https://open.spotify.com/playlist/${spotify_playlist.vjp.id}"
  description = "Visit this URL in your browser to listen to the playlist"
}
