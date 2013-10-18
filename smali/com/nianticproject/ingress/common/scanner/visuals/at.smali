.class final Lcom/nianticproject/ingress/common/scanner/visuals/at;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/visuals/as;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/as;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/at;->a:Lcom/nianticproject/ingress/common/scanner/visuals/as;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/at;->a:Lcom/nianticproject/ingress/common/scanner/visuals/as;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/visuals/as;->j:Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;->f(Lcom/nianticproject/ingress/common/scanner/visuals/HackController;)Lcom/nianticproject/ingress/common/scanner/visuals/au;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/at;->a:Lcom/nianticproject/ingress/common/scanner/visuals/as;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/scanner/visuals/as;->i:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/au;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 299
    return-void
.end method
