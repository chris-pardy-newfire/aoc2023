function execute(day::Int, parts...)
    function loadinput(file)
        let f
            try
                f = open(file)
                return split(read(f, String), '\n', keepempty=false)
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