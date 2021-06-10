local function convert_string_in_matrix(s)
    local _matrix = {}
    for column in s:gmatch('[^\r\n]+') do
        local row = {}
       
        for caracter in column:gmatch('%S+') do
            local number = tonumber(caracter)
            table.insert(row, number)
        end
        table.insert(_matrix, row)
    end

    return _matrix
end

local function convert_string_in_rows(column)
    local row = {}
   
    for caracter in column:gmatch('[%d]+') do
        number = tonumber(caracter)
        table.insert(row, number)
    end
    return row
end


return function(s)
    local matrix = convert_string_in_matrix(s)

    return {

        row = function(row_num)
            return matrix[row_num]
        end,

        column = function(col_num)
            local column_value = {}
            for key, value in pairs(matrix) do
               table.insert(column_value, value[col_num]) 
            end

            return column_value
        end

    } 

end
