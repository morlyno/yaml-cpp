project "yaml-cpp"
    kind "StaticLib"
	language "c++"
	cppdialect "c++17"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.cpp",

        "include/**.h"
    }

	includedirs
	{
		"include"
	}
    
	filter "system:windows"
        systemversion "latest"
    
    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
        defines "NDEBUG"
