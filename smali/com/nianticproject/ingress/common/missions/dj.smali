.class public final Lcom/nianticproject/ingress/common/missions/dj;
.super Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;
.source "SourceFile"


# static fields
.field public static a:Lcom/nianticproject/ingress/common/scanner/ev;


# instance fields
.field private d:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/nianticproject/ingress/common/missions/dk;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/missions/dk;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/dj;->a:Lcom/nianticproject/ingress/common/scanner/ev;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Ljava/util/List;
    .locals 6
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    const-string/jumbo v0, "tutorial/diagram_move.png"

    invoke-static {v0, v4}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/dj;->d:Lcom/badlogic/gdx/graphics/Texture;

    .line 45
    invoke-static {}, Lcom/google/a/c/dc;->h()Lcom/google/a/c/de;

    move-result-object v0

    .line 46
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "As an agent, you\'ll gain items by Hacking "

    aput-object v2, v1, v4

    const-string/jumbo v2, "Portals"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, "."

    aput-object v3, v1, v2

    invoke-static {p1, p2, v1}, Lcom/nianticproject/ingress/common/missions/dj;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 48
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/dj;->d:Lcom/badlogic/gdx/graphics/Texture;

    add-int/lit8 v3, p2, -0x32

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/graphics/Texture;I)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 49
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "Portals are locations where XM is leaking into our world."

    aput-object v2, v1, v4

    invoke-static {p1, p2, v1}, Lcom/nianticproject/ingress/common/missions/dj;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 51
    invoke-virtual {v0}, Lcom/google/a/c/de;->a()Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;->dispose()V

    .line 57
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dj;->d:Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/dj;->d:Lcom/badlogic/gdx/graphics/Texture;

    .line 58
    return-void
.end method
