defmodule ExRets.Metadata.Resource.Object do
  defstruct [
    :metadata_entry_id,
    :object_type,
    :mime_type,
    :visible_name,
    :description,
    :object_timestamp,
    :object_count,
    :location_availability,
    :post_support,
    :object_data,
    :max_file_size
  ]

  @type t :: %__MODULE__{
          metadata_entry_id: metadata_entry_id(),
          object_type: object_type(),
          mime_type: mime_type(),
          visible_name: visible_name(),
          description: description(),
          object_timestamp: object_timestamp(),
          object_count: object_count(),
          location_availability: location_availability(),
          post_support: post_support(),
          object_data: object_data(),
          max_file_size: max_file_size()
        }

  @typedoc """
  A value that never changes as long as the semantic definition of this field remains unchanged.
  """
  @type metadata_entry_id :: String.t()

  @typedoc "The classification of the Object."
  @type object_type :: String.t()

  @typedoc """
  The mime-type/subtypes of the Object type.  This is the collection of Object media encodings
  available for the Objects on this system.  Objects may have one or more mime-type of those
  listed in this field.  This list is the mime-types that can be passed by the client in the
  "Accept" parameter in the GetObject transaction.  All Objects can return a mime-type of text/xml
  as an error code/error reply when a fault occurs in the GetObject transaction.
  """
  @type mime_type :: [String.t()]

  @typedoc "The user-visible name of the Object type."
  @type visible_name :: String.t()

  @typedoc "A user-visible description of the Object type."
  @type description :: String.t()

  @typedoc """
  The `SystemName` of the field in a `METADATA-TABLE` that acts as the timestamp for Objects of
  this type.  This `SystemName` MUST be one that appears in every class that has Objects of this
  type.
  """
  @type object_timestamp :: String.t()

  @typedoc """
  The `SystemName` of the field in a `METADATA-TABLE` that acts as the count for Objects of this
  type.  This `SystemName` MUST be one that appears in every class that has Objects of this type.
  """
  @type object_count :: String.t()

  @typedoc """
  When `true`, indicates that the server will honor the Location=1 parameter at least for some
  Objects.  When `false`, indicates that the server does not support the Location=1 functionality.
  """
  @type location_availability :: boolean()

  @typedoc """
  When `true`, indicates that the server will honor the PostObject Transaction for this Object.
  When `false`, indicates that the server does not support the PostObject Transaction
  functionality for this Object.
  """
  @type post_support :: boolean()

  @typedoc """
  The `ResourceID` and `ClassName` identifying a `METADATA-TABLE` that provides additional data
  about Objects described by this metadata.  If an Object contains no additional data, this field
  MUST be `nil`.
  """
  @type object_data :: {String.t(), String.t()} | nil

  @typedoc """
  Indicates the maximum file size, in bytes, that is accepted by the server for Objects.  The
  server MAY refuse any Object files in the PostObject Transaction that are larger than this size.
  A server MUST return an error when the file is rejected because it is too large.  A server MAY
  return an http error code if an Object file bigger than this size is received.  A server MAY
  return a RETS ReplyCode if an Object file bigger than this size is received.  If a server does
  not have a maximum file size, this field MUST be `nil`.
  """
  @type max_file_size :: pos_integer() | nil
end
