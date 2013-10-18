.class final Lcom/nianticproject/ingress/common/missions/ff;
.super Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/fc;

.field private d:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/fc;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/ff;->a:Lcom/nianticproject/ingress/common/missions/fc;

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
    const/4 v4, 0x1

    .line 243
    invoke-static {}, Lcom/google/a/c/dc;->h()Lcom/google/a/c/de;

    move-result-object v0

    .line 244
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "This is "

    aput-object v3, v1, v2

    const-string/jumbo v2, "Exotic Matter"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, " (or "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "XM"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ").\nXM powers your scanner."

    aput-object v3, v1, v2

    invoke-static {p1, p2, v1}, Lcom/nianticproject/ingress/common/missions/ff;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 246
    const-string/jumbo v1, "tutorial/diagram_xm.png"

    invoke-static {v1}, Lcom/nianticproject/ingress/common/b/c;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/ff;->d:Lcom/badlogic/gdx/graphics/Texture;

    .line 247
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/ff;->d:Lcom/badlogic/gdx/graphics/Texture;

    add-int/lit8 v3, p2, -0x28

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/graphics/Texture;I)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->none:Lcom/badlogic/gdx/utils/Scaling;

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 249
    invoke-virtual {v0}, Lcom/google/a/c/de;->a()Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 255
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "WALK around now to collect XM."

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lcom/nianticproject/ingress/common/missions/ff;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;->dispose()V

    .line 261
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ff;->d:Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    .line 262
    return-void
.end method
