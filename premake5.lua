project "tinyobjloader"
    kind "StaticLib"
    language "C++"
    staticruntime "off"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir    ("int/" .. outputdir .. "/%{prj.name}")

    files {
        "include/tinyobjloader/tiny_obj_loader.h",
        "src/tiny_obj_loader.cpp"
    }

    includedirs {
        "include"
    }
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "Speed"