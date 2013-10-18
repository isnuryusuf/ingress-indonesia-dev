.class public final Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bundleMap:Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dh",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/knobs/g;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final syncTimestamp:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->bundleMap:Lcom/google/a/c/dh;

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->syncTimestamp:J

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/google/a/c/dh;J)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/dh",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/knobs/g;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->bundleMap:Lcom/google/a/c/dh;

    .line 37
    iput-wide p2, p0, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->syncTimestamp:J

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/c/dh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/knobs/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->bundleMap:Lcom/google/a/c/dh;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->syncTimestamp:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 63
    instance-of v1, p1, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;

    .line 67
    iget-wide v1, p0, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->syncTimestamp:J

    iget-wide v3, p1, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->syncTimestamp:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->bundleMap:Lcom/google/a/c/dh;

    iget-object v2, p1, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->bundleMap:Lcom/google/a/c/dh;

    invoke-virtual {v1, v2}, Lcom/google/a/c/dh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->bundleMap:Lcom/google/a/c/dh;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->syncTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 77
    const-string/jumbo v0, "bundleMap: %s, syncTimestamp: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->bundleMap:Lcom/google/a/c/dh;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->syncTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
