function createStarfield ([Star[]] $stars, [Spaceship] $spaceship, [Shot[]] $shots, [int] $bottomSpace) {
    $windowWidth = $Host.UI.RawUI.WindowSize.Width
    $windowHeight = $Host.UI.RawUI.WindowSize.Height
    $starfield = ""

    for ($i = 1; $i -le ($windowHeight - $bottomSpace); $i++) {                                  # -2 so there is room for the UI and the comandline indicator "_"
        $starline = createStarline $stars[$i] $spaceship $shots $i
        $starfield = $starfield + $starline
    }

    return $starfield
}