data "spotify_search_track" "j97" {
  artist = "Jack - J97"
}

resource "spotify_playlist" "domdom" {
  name        = "Đum Đúm nghịch Terraform"
  description = "Như một vị tinh tú Jack lấp lánh trên bầu trời rộng lớn"
  public      = true

  tracks = [for i in range(0, 10) : data.spotify_search_track.j97.tracks[i].id]
}

data "spotify_search_track" "bigbang" {
  artist = "BIGBANG"
}

resource "spotify_playlist" "vjp" {
  name        = "V.I.P nua? mua`"
  description = "Em nghe co vai bai thoi"
  public      = true

  tracks = [
    data.spotify_search_track.bigbang.tracks[0].id,
    data.spotify_search_track.bigbang.tracks[1].id,
  ]
}
