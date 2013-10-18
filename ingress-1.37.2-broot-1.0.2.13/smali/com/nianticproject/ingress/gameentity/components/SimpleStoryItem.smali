.class public Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/StoryItem;
.implements Lcom/nianticproject/ingress/shared/s;


# instance fields
.field private transient dirty:Z

.field private hasBeenViewed:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final primaryUrl:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private releaseDate:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final shortDescription:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->primaryUrl:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->shortDescription:Ljava/lang/String;

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->releaseDate:J

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/gameentity/components/StoryItem;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/StoryItem;->getPrimaryUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->primaryUrl:Ljava/lang/String;

    .line 52
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/StoryItem;->getShortDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->shortDescription:Ljava/lang/String;

    .line 53
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/StoryItem;->getReleaseDate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->releaseDate:J

    .line 54
    iput-boolean v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->dirty:Z

    .line 55
    iput-boolean v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->hasBeenViewed:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->primaryUrl:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->shortDescription:Ljava/lang/String;

    .line 44
    iput-wide p3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->releaseDate:J

    .line 45
    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->dirty:Z

    .line 46
    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->hasBeenViewed:Z

    .line 47
    return-void
.end method


# virtual methods
.method public buildUnviewedCopy()Lcom/nianticproject/ingress/gameentity/a;
    .locals 5

    .prologue
    .line 115
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->primaryUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->shortDescription:Ljava/lang/String;

    iget-wide v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->releaseDate:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public getPrimaryUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->primaryUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->releaseDate:J

    return-wide v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public hasBeenViewed()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->hasBeenViewed:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->primaryUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->shortDescription:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->hasBeenViewed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->releaseDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->dirty:Z

    return v0
.end method

.method public setClean()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->dirty:Z

    .line 84
    return-void
.end method

.method public setHasBeenViewed(Z)V
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->hasBeenViewed:Z

    if-eq v0, p1, :cond_0

    .line 108
    iput-boolean p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->hasBeenViewed:Z

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->dirty:Z

    .line 111
    :cond_0
    return-void
.end method

.method public setReleaseDate(J)V
    .locals 1
    .parameter

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->releaseDate:J

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->dirty:Z

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 88
    const-string/jumbo v1, "url: <%s>, %s, release date: %s%s"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->primaryUrl:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->hasBeenViewed:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "viewed"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-wide v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->releaseDate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleStoryItem;->dirty:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, ", [dirty]"

    :goto_1
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "unviewed"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method
