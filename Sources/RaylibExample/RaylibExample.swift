import RaylibSwift

@main
struct Game {
    static let screenWidth: Int32 = 800
    static let screenHeight: Int32 = 450

    static func main() {
        InitWindow(screenWidth, screenHeight, "raylib example - basic window")

        SetTargetFPS(60)

        // Main game loop
        while !WindowShouldClose() {
            // Update

            // Draw
            BeginDrawing()

            ClearBackground(Color(r: 255, g: 255, b: 255, a: 255))

            DrawText("Congratulations! It's a window!", 190, 200, 20, Color(r: 200, g: 200, b: 220, a: 255))

            EndDrawing()
        }

        CloseWindow()
    }
}