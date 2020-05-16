project "ImGuizmo"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"ImGuizmo.h",
		"ImGuizmo.cpp",
		"ImSequencer.h",
		"ImSequencer.cpp",
		"ImGradient.h",
		"ImGradient.cpp",
		"ImCurveEdit.h",
        "ImCurveEdit.cpp",
        "example/ImApp.h",
        -- "example/imconfig.h",
        -- "example/imgui.cpp",
        -- "example/imgui.h",
        -- "example/imgui_draw.h",
        -- "example/imgui_internal.h",
        -- "example/imgui_widgets.cpp",
        -- "example/imstb_rectpack.h",
        -- "example/imstb_textedit.h",
        -- "example/imstb_truetype.h",
        "example/main.cpp",
        "example/stb_image.h"
    }
    
    includedirs
    {
        "",
        "../imgui"  -- instead of imgui from example folder, use imgui from docking branch of library
    }

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
        staticruntime "On"
        
        defines
        {
            "IMGUI_HAS_VIEWPORT"
        }

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
        staticruntime "On"
        
        defines
        {
            "IMGUI_HAS_VIEWPORT"
        }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
