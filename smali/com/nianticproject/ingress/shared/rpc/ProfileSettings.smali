.class public final Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final areMetricsPublic:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;->areMetricsPublic:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;->areMetricsPublic:Z

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;->areMetricsPublic:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 34
    instance-of v1, p1, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    if-nez v1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    .line 39
    iget-boolean v1, p0, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;->areMetricsPublic:Z

    iget-boolean v2, p1, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;->areMetricsPublic:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;->areMetricsPublic:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    invoke-static {p0}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "areMetricsPublic"

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;->areMetricsPublic:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Z)Lcom/google/a/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
