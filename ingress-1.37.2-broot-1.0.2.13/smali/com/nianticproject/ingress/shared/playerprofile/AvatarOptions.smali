.class public Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final backgroundColorOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final backgroundOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final foregroundColorOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final foregroundOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->foregroundOptions:Ljava/util/List;

    .line 52
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->backgroundOptions:Ljava/util/List;

    .line 53
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->foregroundColorOptions:Ljava/util/List;

    .line 54
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->backgroundColorOptions:Ljava/util/List;

    .line 55
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->foregroundOptions:Ljava/util/List;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->backgroundOptions:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->foregroundColorOptions:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->backgroundColorOptions:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 75
    instance-of v1, p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;

    .line 80
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->foregroundOptions:Ljava/util/List;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->foregroundOptions:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->backgroundOptions:Ljava/util/List;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->backgroundOptions:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->foregroundColorOptions:Ljava/util/List;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->foregroundColorOptions:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->backgroundColorOptions:Ljava/util/List;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->backgroundColorOptions:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->foregroundOptions:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->backgroundOptions:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->foregroundColorOptions:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->backgroundColorOptions:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    const-string/jumbo v0, "foregroundOptions: %s, backgroundOptions: %s, foregroundColorOptions: %s, backgroundColorOptions: %s, "

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->foregroundOptions:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->backgroundOptions:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->foregroundColorOptions:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarOptions;->backgroundColorOptions:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
