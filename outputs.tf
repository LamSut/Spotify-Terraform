output "j97_url" {
  value       = "https://open.spotify.com/playlist/${spotify_playlist.domdom.id}"
  description = "Visit this URL in your browser to listen to the playlist"
}

output "bigbang_url" {
  value       = "https://open.spotify.com/playlist/${spotify_playlist.vjp.id}"
  description = "Visit this URL in your browser to listen to the playlist"
}
