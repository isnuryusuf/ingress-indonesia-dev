.class public Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final backgroundColor:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final backgroundLayerId:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final foregroundColor:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final foregroundLayerId:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->foregroundLayerId:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->backgroundLayerId:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->foregroundColor:I

    .line 43
    iput v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->backgroundColor:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->foregroundLayerId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->backgroundLayerId:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->foregroundColor:I

    .line 34
    iput p4, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->backgroundColor:I

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->foregroundLayerId:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->backgroundLayerId:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->foregroundColor:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->backgroundColor:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 70
    instance-of v1, p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;

    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;

    .line 72
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->foregroundLayerId:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->foregroundLayerId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->backgroundLayerId:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->backgroundLayerId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->foregroundColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->foregroundColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->backgroundColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->backgroundColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->foregroundLayerId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->backgroundLayerId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->foregroundColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->backgroundColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    const-string/jumbo v0, "foregroundLayerId: %s, backgroundLayerId: %s, foregroundColor: %s, backgroundColor: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->foregroundLayerId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->backgroundLayerId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->foregroundColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->backgroundColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
