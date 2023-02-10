defmodule FizzBuzz do
  def call(list) when is_list(list) do
    Enum.each(list, &fizzbuzz/1)
  end

  defp fizzbuzz(number) when is_number(number) and number > 0 do
    IO.puts(fizzbuzz(number, rem(number, 3), rem(number, 5)))
  end

  defp fizzbuzz(_number, 0, 0), do: "fizzbuzz"
  defp fizzbuzz(_number, 0, _), do: "fizz"
  defp fizzbuzz(_number, _, 0), do: "buzz"
  defp fizzbuzz(number, _, _), do: number
end
