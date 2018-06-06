defmodule Gangnam.Style do
  use Ecto.Schema
  import Ecto.Changeset


  schema "styles" do
    field :comment, :string
    field :image, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(style, attrs) do
    style
    |> cast(attrs, [:name, :comment, :image])
    |> validate_required([:name, :comment, :image])
  end
end
