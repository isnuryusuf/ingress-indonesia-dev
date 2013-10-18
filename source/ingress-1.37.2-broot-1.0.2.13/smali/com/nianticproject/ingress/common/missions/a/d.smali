.class final Lcom/nianticproject/ingress/common/missions/a/d;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;

.field final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field final synthetic c:Lcom/nianticproject/ingress/common/missions/a/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/a/a;Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/a/d;->c:Lcom/nianticproject/ingress/common/missions/a/a;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/a/d;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/missions/a/d;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aO:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 256
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/d;->c:Lcom/nianticproject/ingress/common/missions/a/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a/a;->a:Lcom/nianticproject/ingress/common/missions/a/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/a/f;->d()V

    .line 257
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a/d;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/d;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v2, "audio-pause"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 258
    return-void
.end method
