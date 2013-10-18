.class public final Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/Avatar;
.implements Lcom/nianticproject/ingress/shared/s;


# instance fields
.field private background:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private transient dirty:Z

.field private foreground:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->foreground:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    .line 36
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->background:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;)V
    .locals 3
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->foreground:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    .line 29
    new-instance v0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->background:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    .line 30
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 82
    instance-of v1, p1, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;

    if-nez v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;

    .line 84
    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->foreground:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    iget-object v2, p1, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->foreground:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->background:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    iget-object v2, p1, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->background:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->dirty:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->dirty:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getBackground()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->background:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    return-object v0
.end method

.method public final getForeground()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->foreground:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->foreground:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->background:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->dirty:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isDirty()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->dirty:Z

    return v0
.end method

.method public final setClean()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->dirty:Z

    .line 73
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    invoke-static {p0}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "foreground"

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->foreground:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "background"

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->background:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "dirty"

    iget-boolean v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->dirty:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Z)Lcom/google/a/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateAvatar(Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;)V
    .locals 4
    .parameter

    .prologue
    .line 51
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;-><init>(Ljava/lang/String;I)V

    .line 54
    new-instance v1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarChoiceParams;->d()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;-><init>(Ljava/lang/String;I)V

    .line 56
    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->foreground:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    invoke-static {v2, v0}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->background:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    invoke-static {v2, v1}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->foreground:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    .line 61
    iput-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->background:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayer;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleAvatar;->dirty:Z

    goto :goto_0
.end method
