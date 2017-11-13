import qualified Geometry.Sphere as Sphere

sphereToCube :: Float -> Float -> Float
sphereToCube a b = (Sphere.volume a + Sphere.volume b) ** (1/3)
