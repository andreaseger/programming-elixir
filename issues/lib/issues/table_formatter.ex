defmodule Issues.TableFormatter do

  import Enum, only: [each: 2, map: 2, map_join: 3, max: 1]

  def print_table_for_columns(rows, headers) do
    data_by_columns = split_into_columns(rows, headers)
    column_widths = widths_of(data_by_columns)
    format = format_for(column_widths)

    :io.format(format, headers)
    IO.puts map_join(column_widths, "-|-", &(List.duplicate("-",&1)))
    puts_in_columns data_by_columns, format
  end

  def split_into_columns(rows, headers) do
    lc header inlist headers do
      map(rows, &(printable(&1[header])))
    end
  end
  def printable(str) when is_binary(str), do: str
  def printable(str), do: to_string(str)

  def widths_of(columns) do
    lc column inlist columns do
      map(column, &String.length/1) |> max
    end
  end
  def format_for(columns) do
    map_join(columns, " | ", &("~-#{&1}s")) <> "~n"
  end

  def puts_in_columns(data_by_columns, format) do
    data_by_columns
      |> List.zip
      |> map(&tuple_to_list/1)
      |> each(&puts_one_line_in_columns(&1, format))
  end
  def puts_one_line_in_columns(fields, format) do
    :io.format(format, fields)
  end
end