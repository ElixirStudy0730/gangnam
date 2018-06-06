defmodule Gangnam.Repo.Migrations.CreateStyles do
  use Ecto.Migration

  def change do
    create table(:styles) do
      add :name, :string
      add :comment, :string
      add :image, :string

      timestamps()
    end

  end
end
