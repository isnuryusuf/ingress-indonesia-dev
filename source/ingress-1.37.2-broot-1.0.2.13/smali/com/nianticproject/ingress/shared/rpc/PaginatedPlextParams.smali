.class public Lcom/nianticproject/ingress/shared/rpc/PaginatedPlextParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ascendingTimestampOrder:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final categories:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final desiredNumItems:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final factionOnly:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final includeRecipientBoundPlexts:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final maxLatE6:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final maxLngE6:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final maxTimestampMs:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final minLatE6:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final minLngE6:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final minTimestampMs:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final playerGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PaginatedPlextParams;->playerGuid:Ljava/lang/String;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/shared/rpc/PaginatedPlextParams;->includeRecipientBoundPlexts:Z

    .line 163
    iput-boolean v1, p0, Lcom/nianticproject/ingress/shared/rpc/PaginatedPlextParams;->factionOnly:Z

    .line 164
    iput v1, p0, Lcom/nianticproject/ingress/shared/rpc/PaginatedPlextParams;->minLatE6:I

    .line 165
    iput v1, p0, Lcom/nianticproject/ingress/shared/rpc/PaginatedPlextParams;->minLngE6:I

    .line 166
    iput v1, p0, Lcom/nianticproject/ingress/shared/rpc/PaginatedPlextParams;->maxLatE6:I

    .line 167
    iput v1, p0, Lcom/nianticproject/ingress/shared/rpc/PaginatedPlextParams;->maxLngE6:I

    .line 168
    iput-wide v3, p0, Lcom/nianticproject/ingress/shared/rpc/PaginatedPlextParams;->minTimestampMs:J

    .line 169
    iput-wide v3, p0, Lcom/nianticproject/ingress/shared/rpc/PaginatedPlextParams;->maxTimestampMs:J

    .line 170
    iput v2, p0, Lcom/nianticproject/ingress/shared/rpc/PaginatedPlextParams;->desiredNumItems:I

    .line 171
    iput-boolean v1, p0, Lcom/nianticproject/ingress/shared/rpc/PaginatedPlextParams;->ascendingTimestampOrder:Z

    .line 172
    iput v2, p0, Lcom/nianticproject/ingress/shared/rpc/PaginatedPlextParams;->categories:I

    .line 173
    return-void
.end method
