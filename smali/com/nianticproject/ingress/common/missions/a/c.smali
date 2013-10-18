.class final Lcom/nianticproject/ingress/common/missions/a/c;
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
    .line 243
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/a/c;->c:Lcom/nianticproject/ingress/common/missions/a/a;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/a/c;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/missions/a/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

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
    .line 246
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aO:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 247
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/c;->c:Lcom/nianticproject/ingress/common/missions/a/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a/a;->a:Lcom/nianticproject/ingress/common/missions/a/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/a/f;->c()V

    .line 248
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/c;->c:Lcom/nianticproject/ingress/common/missions/a/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a/a;->a:Lcom/nianticproject/ingress/common/missions/a/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/a/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "audio-pause"

    .line 249
    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a/c;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    invoke-virtual {v2, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 250
    return-void

    .line 248
    :cond_0
    const-string/jumbo v0, "audio-play"

    goto :goto_0
.end method
