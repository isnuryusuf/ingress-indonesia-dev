.class public Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final avatarColorBackground:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final avatarColorForeground:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final backgroundLayer:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final foregroundLayer:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->foregroundLayer:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    .line 48
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->backgroundLayer:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    .line 49
    iput v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->avatarColorForeground:I

    .line 50
    iput v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->avatarColorBackground:I

    .line 51
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->foregroundLayer:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    return-object v0
.end method

.method public final b()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->backgroundLayer:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->avatarColorForeground:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->avatarColorBackground:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 71
    instance-of v1, p1, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;

    .line 76
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->backgroundLayer:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->backgroundLayer:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->foregroundLayer:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->foregroundLayer:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->avatarColorForeground:I

    iget v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->avatarColorForeground:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->avatarColorBackground:I

    iget v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->avatarColorBackground:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->backgroundLayer:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->foregroundLayer:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->avatarColorForeground:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->avatarColorBackground:I

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
    .line 93
    const-string/jumbo v0, "backgroundLayer: %s, foregroundLayer: %s, avatarColorForeground: #%s, avatarColorBackground: #%s, "

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->backgroundLayer:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->foregroundLayer:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->avatarColorForeground:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->avatarColorBackground:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
