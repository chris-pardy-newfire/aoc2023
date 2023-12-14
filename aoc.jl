function execute(day::Int, parts...; keepempty = false)
    function loadinput(file)
        let f
            try
                f = open(file)
                return split(read(f, String), '\n', keepempty=keepempty)
            finally
                if f !== nothing
                    close(f)
                end
            end
        end
    end
    contents = loadinput("./input$day.txt")
    for part in parts
        println(part(contents))
    end
end

function makegrid(contents)
    vcat(
        map(
            ln -> hcat(ln...),
            contents
        )...
    )
end