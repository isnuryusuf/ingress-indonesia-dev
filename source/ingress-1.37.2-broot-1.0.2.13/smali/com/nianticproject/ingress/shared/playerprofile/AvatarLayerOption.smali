.class public Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final imageUrl:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final layer:Lcom/nianticproject/ingress/shared/playerprofile/a;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->id:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->imageUrl:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->layer:Lcom/nianticproject/ingress/shared/playerprofile/a;

    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/playerprofile/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->id:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->imageUrl:Ljava/lang/String;

    .line 43
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/playerprofile/a;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->layer:Lcom/nianticproject/ingress/shared/playerprofile/a;

    .line 44
    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;Lcom/nianticproject/ingress/shared/playerprofile/a;)Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 21
    new-instance v0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/playerprofile/a;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/nianticproject/ingress/shared/playerprofile/a;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->layer:Lcom/nianticproject/ingress/shared/playerprofile/a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 68
    instance-of v1, p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    .line 73
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->imageUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->layer:Lcom/nianticproject/ingress/shared/playerprofile/a;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->layer:Lcom/nianticproject/ingress/shared/playerprofile/a;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->layer:Lcom/nianticproject/ingress/shared/playerprofile/a;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    const-string/jumbo v0, "id: %s, imageUrl: %s, layer: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->imageUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->layer:Lcom/nianticproject/ingress/shared/playerprofile/a;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
