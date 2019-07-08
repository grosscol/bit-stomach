# top level config environment
BS <- new.env()

# IRIs for parsing spek
BS$HAS_DISPOSITION_URI <- "http://purl.obolibrary.org/obo/RO_0000091"
BS$DEFAULT_APP_ONTO_URL <- "http://example.com/app#"
BS$HAS_PERFORMERS_URI <- "http://example.com/slowmo#IsAboutPerformer"
BS$PERFORMER_URI <- "http://purl.obolibrary.org/obo/psdo_0000085"
BS$INPUT_TABLE_IRI <- "http://example.com/slowmo#InputTable"
BS$MEASURE_IRI <- "http://example.com/slowmo#Measure"
BS$COL_USE_IRI <- "http://example.com/slowmo#ColumnUse"

BS$TABLE_SCHEMA_IRI <- "http://www.w3.org/ns/csvw#tableSchema"
BS$COLUMNS_IRI <- "http://www.w3.org/ns/csvw#columns"
BS$TABLE_IRI <- "http://www.w3.org/ns/csvw#Table"
BS$DIALECT_IRI <- "http://www.w3.org/ns/csvw#dialect"
BS$COL_NAME_IRI <- "http://www.w3.org/ns/csvw#name"

# Slowmo ascribee IRIs
BS$CAPABILITY_BARRIER <- "http://example.com/slowmo#CapabilityBarrier"
BS$NEGATIVE_TREND     <- "http://example.com/slowmo#PerformanceTrendNegative"
BS$POSITIVE_TREND     <- "http://example.com/slowmo#PerformanceTrendPositive"
BS$NEGATIVE_GAP       <- "http://example.com/slowmo#PerformanceGapNegative"
BS$POSITIVE_GAP       <- "http://example.com/slowmo#PerformanceGapPositive"
BS$PERFORMANCE_GAP    <- "http://example.com/slowmo#PerformanceGap"
BS$LARGE_GAP          <- "http://example.com/slowmo#LargeGap"

# Used in swap_in_uris.r as lookup for shortname names in annotations to full IRI
BS$DEFAULT_URI_LOOKUP <- list(
  performer            = "http://purl.obolibrary.org/obo/psdo_0000085",
  has_performer        = BS$HAS_PERFORMER_URI,
  uses_template        = "http://example.com/slowmo#IsAboutTemplate",
  spek                 = "http://example.com/slowmo#spek",
  normative_comparator = "http://example.com/slowmo#NormativeComparator",
  related_location     = "http://example.com/slowmo#RelatedLocation",
  has_part             = "http://purl.obolibrary.org/obo/bfo#BFO_0000051",
  has_disposition      = "http://purl.obolibrary.org/obo/RO_0000091",
  client_spek          = "http://example.com/app#clientname_spek",
  capability_barrier   = BS$CAPABILITY_BARRIER,
  negative_trend       = BS$NEGATIVE_TREND,
  positive_trend       = BS$POSITIVE_TREND,
  negative_gap         = BS$NEGATIVE_GAP,
  positive_gap         = BS$POSITIVE_GAP,
  performance_gap      = BS$PERFORMANCE_GAP,
  large_gap            = BS$LARGE_GAP
)

# Default configuration
BS$DEFAULT_RUN_CONFIG <- list(
    verbose = FALSE,
    app_onto_url = BS$DEFAULT_APP_ONTO_URL,
    uri_lookup = BS$DEFAULT_URI_LOOKUP
  )

# Error Strings
BS$ERROR_INVALID_ANNOTATION_PATH <- "[Error] Path to annotations file not found."
BS$ERROR_UNREADABLE_ANNOTATION_FILE <- "[Error] Annotation file unreadable.  Check permissions."
BS$ERROR_NO_ID_COLUMN <- "[Error] Spek did not specify 'identity' ColumnUse, or 'id' column missing from data."
BS$ERROR_NO_SPEK <- "[Error] Spek not provided."

# Warning String constants
BS$WARN_NO_ANNOTATION_FUNCTIONS <- "[Warn] No annotation functions found."
