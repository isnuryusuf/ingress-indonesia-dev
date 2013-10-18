.class final Lcom/nianticproject/ingress/common/ui/q;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 4
    .parameter

    .prologue
    .line 88
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/o;->d()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v0, "LoadMainUiSkin"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v1, "{data:common/data/nemesis.json,data-xhdpi:common/data-xhdpi/nemesis.json,data-xxhdpi:common/data-xxhdpi/nemesis.json}"

    invoke-static {v1}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/o;->d()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v2

    invoke-static {}, Lcom/nianticproject/ingress/common/b/r;->a()Lcom/nianticproject/ingress/common/b/r;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/scenes/scene2d/ui/Padding$PaddingProvider;)V

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/o;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 94
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/d;->a()[Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->enableMulticolor([Lcom/badlogic/gdx/graphics/Color;)V

    .line 95
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/o;->e()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method
