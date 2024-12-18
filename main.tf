data "spotify_search_track" "J97" {
  artist = "Jack - J97"
}

resource "spotify_playlist" "DomDom" {
  name        = "Đum Đúm nghịch Terraform"
  description = "Như một vị tinh tú Jack lấp lánh trên bầu trời rộng lớn"
  public      = true

  tracks = [for i in range(0, 10) : data.spotify_search_track.J97.tracks[i].id]
}
