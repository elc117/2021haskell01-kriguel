import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera 7 circulos em formato de alvo com cores alternadas e opacidade 0.7 (o mais interno tem opacidade 1).
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  (svgCircle 250 250 150 "rgb(200, 55, 55, 0.7)") ++ 
  (svgCircle 250 250 125 "rgb(255, 255, 255, 0.7)") ++ 
  (svgCircle 250 250 100 "rgb(200, 55, 55, 0.7)") ++
  (svgCircle 250 250 75 "rgb(255, 255, 255, 0.7)") ++
  (svgCircle 250 250 50 "rgb(200, 55, 55, 0.7)") ++
  (svgCircle 250 250 25 "rgb(255, 255, 255, 0.7)") ++
  (svgCircle 250 250 5 "rgb(255, 0, 0, 1)") ++
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll
