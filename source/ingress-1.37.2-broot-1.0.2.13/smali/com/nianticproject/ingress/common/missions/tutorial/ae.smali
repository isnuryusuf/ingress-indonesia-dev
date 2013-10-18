.class final Lcom/nianticproject/ingress/common/missions/tutorial/ae;
.super Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/tutorial/ad;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ae;->a:Lcom/nianticproject/ingress/common/missions/tutorial/ad;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/google/a/c/dc;->h()Lcom/google/a/c/de;

    move-result-object v0

    .line 56
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "This is "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "Exotic Matter"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " (or "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "XM"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "). XM is energy used to power your Scanner actions."

    aput-object v3, v1, v2

    invoke-static {p1, p2, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/ae;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 60
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ae;->a:Lcom/nianticproject/ingress/common/missions/tutorial/ad;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/missions/tutorial/ad;->a(Lcom/nianticproject/ingress/common/missions/tutorial/ad;)Lcom/nianticproject/ingress/common/missions/tutorial/u;

    move-result-object v3

    const-string/jumbo v4, "tutorial_intro_xm"

    invoke-interface {v3, v4}, Lcom/nianticproject/ingress/common/missions/tutorial/u;->a(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->none:Lcom/badlogic/gdx/utils/Scaling;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;)V

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 63
    invoke-virtual {v0}, Lcom/google/a/c/de;->a()Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "Walk around now to collect XM."

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lcom/nianticproject/ingress/common/missions/tutorial/ae;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method
