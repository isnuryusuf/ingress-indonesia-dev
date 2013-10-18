.class final Lcom/nianticproject/ingress/common/missions/tutorial/k;
.super Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/tutorial/j;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/j;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/k;->a:Lcom/nianticproject/ingress/common/missions/tutorial/j;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Ljava/util/List;
    .locals 9
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
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 32
    invoke-static {}, Lcom/google/a/c/dc;->h()Lcom/google/a/c/de;

    move-result-object v0

    .line 33
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "These are "

    aput-object v2, v1, v5

    const-string/jumbo v2, "Portals"

    aput-object v2, v1, v6

    const-string/jumbo v2, "."

    aput-object v2, v1, v7

    invoke-static {p1, p2, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 35
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/tutorial/k;->a:Lcom/nianticproject/ingress/common/missions/tutorial/j;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/missions/tutorial/j;->a(Lcom/nianticproject/ingress/common/missions/tutorial/j;)Lcom/nianticproject/ingress/common/missions/tutorial/u;

    move-result-object v3

    const-string/jumbo v4, "tutorial_intro_portal"

    invoke-interface {v3, v4}, Lcom/nianticproject/ingress/common/missions/tutorial/u;->a(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->none:Lcom/badlogic/gdx/utils/Scaling;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;)V

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 38
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, v1, v5

    const-string/jumbo v2, "Portals are real world art objects"

    aput-object v2, v1, v6

    const-string/jumbo v2, " that you capture for your faction."

    aput-object v2, v1, v7

    invoke-static {p1, p2, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 40
    invoke-virtual {v0}, Lcom/google/a/c/de;->a()Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Portal color shows which faction currently owns it."

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lcom/nianticproject/ingress/common/missions/tutorial/k;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method
