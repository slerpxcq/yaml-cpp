
project "yaml-cpp"
	kind "StaticLib"
	language "C++"
    cppdialect "C++17"
    staticruntime "on"

    targetdir "%{wks.location}/bin/%{prj.name}/%{cfg.buildcfg}"
    objdir "%{wks.location}/obj/%{prj.name}/%{cfg.buildcfg}"

    files {
        "src/**.cpp",
    }

    includedirs {
        "include"
    }

    defines {
        "YAML_CPP_STATIC_DEFINE"
    }

    filter "system:windows"
        systemversion "latest"
        defines {
			"_CRT_SECURE_NO_WARNINGS"
        }

    filter "configurations:Debug"
        symbols "on"

    filter "configurations:Release"
        optimize "on"

