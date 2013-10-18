.class public final Lcom/nianticproject/ingress/common/playerprofile/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

.field private final b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->a:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    .line 143
    iput-object p2, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    .line 144
    iput-object p3, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->c:Ljava/lang/Integer;

    .line 145
    iput-object p4, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->d:Ljava/lang/Integer;

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;Ljava/lang/Integer;Ljava/lang/Integer;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nianticproject/ingress/common/playerprofile/j;-><init>(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/gameentity/components/Avatar;)Lcom/nianticproject/ingress/common/playerprofile/j;
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 72
    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_5

    .line 73
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v3, v3, v2, v1}, Lcom/nianticproject/ingress/common/playerprofile/j;-><init>(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 76
    :goto_1
    return-object v0

    .line 72
    :cond_0
    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Avatar;->getBackground()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Avatar;->getBackground()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Avatar;->getForeground()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Avatar;->getForeground()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :cond_5
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Avatar;->getBackground()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    move-result-object v1

    sget-object v2, Lcom/nianticproject/ingress/shared/playerprofile/a;->b:Lcom/nianticproject/ingress/shared/playerprofile/a;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->a(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;Lcom/nianticproject/ingress/shared/playerprofile/a;)Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    move-result-object v1

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Avatar;->getForeground()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    move-result-object v2

    sget-object v3, Lcom/nianticproject/ingress/shared/playerprofile/a;->a:Lcom/nianticproject/ingress/shared/playerprofile/a;

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->a(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;Lcom/nianticproject/ingress/shared/playerprofile/a;)Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    move-result-object v2

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Avatar;->getBackground()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Avatar;->getForeground()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/playerprofile/j;-><init>(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public static a(Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;)Lcom/nianticproject/ingress/common/playerprofile/j;
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/nianticproject/ingress/common/playerprofile/j;-><init>(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 33
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/j;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->b()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->a()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerAvatar;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/playerprofile/j;-><init>(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/playerprofile/j;)Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->a:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/playerprofile/j;)Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/playerprofile/j;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/playerprofile/j;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->d:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/playerprofile/k;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/playerprofile/k;-><init>(Lcom/nianticproject/ingress/common/playerprofile/j;B)V

    return-object v0
.end method

.method public final b()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->a:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    return-object v0
.end method

.method public final c()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    return-object v0
.end method

.method public final d()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final e()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 173
    instance-of v1, p1, Lcom/nianticproject/ingress/common/playerprofile/j;

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/common/playerprofile/j;

    .line 178
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->a:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/playerprofile/j;->a:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/playerprofile/j;->b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/playerprofile/j;->d:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/playerprofile/j;->c:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->a:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->a:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 186
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->a:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->d:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->c:Ljava/lang/Integer;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "backgroundLayer: %s, foregroundLayer: %s, foregroundColor: #%s, backgroundColor: #%s, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->a:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->c:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/j;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
