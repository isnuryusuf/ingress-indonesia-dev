.class final Lcom/nianticproject/ingress/common/scanner/modes/v;
.super Lcom/nianticproject/ingress/common/ui/elements/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/u;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/u;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/v;->a:Lcom/nianticproject/ingress/common/scanner/modes/u;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4180

    const v3, 0x3ea8f5c3

    .line 92
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 95
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v2, "CONFIRM"

    invoke-direct {v1, v2, p1}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 96
    new-instance v2, Lcom/nianticproject/ingress/common/scanner/modes/w;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/scanner/modes/w;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/v;)V

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/f;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 102
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-static {v3}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    .line 108
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v2, "BACK"

    invoke-direct {v1, v2, p1}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 109
    new-instance v2, Lcom/nianticproject/ingress/common/scanner/modes/x;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/scanner/modes/x;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/v;)V

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/f;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 115
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-static {v3}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    .line 117
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 118
    const/high16 v1, 0x4270

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 124
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/v;->a:Lcom/nianticproject/ingress/common/scanner/modes/u;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/u;->c(Lcom/nianticproject/ingress/common/scanner/modes/u;)Lcom/nianticproject/ingress/common/scanner/modes/af;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/v;->a:Lcom/nianticproject/ingress/common/scanner/modes/u;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/u;->c(Lcom/nianticproject/ingress/common/scanner/modes/u;)Lcom/nianticproject/ingress/common/scanner/modes/af;

    move-result-object v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/v;->a:Lcom/nianticproject/ingress/common/scanner/modes/u;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/modes/u;->c(Lcom/nianticproject/ingress/common/scanner/modes/u;)Lcom/nianticproject/ingress/common/scanner/modes/af;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/scanner/modes/af;->b(F)V

    .line 127
    :cond_0
    return-object v0
.end method
