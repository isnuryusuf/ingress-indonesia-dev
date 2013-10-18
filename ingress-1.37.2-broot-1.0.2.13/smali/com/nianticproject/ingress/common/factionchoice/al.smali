.class final Lcom/nianticproject/ingress/common/factionchoice/al;
.super Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/ai;

.field final synthetic b:Lcom/nianticproject/ingress/common/factionchoice/aj;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/aj;Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/al;->b:Lcom/nianticproject/ingress/common/factionchoice/aj;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/factionchoice/al;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;-><init>(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 262
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 263
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v1

    const/high16 v2, 0x4170

    invoke-virtual {v1, v2}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    .line 264
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "You have selected the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nianticproject/ingress/common/factionchoice/al;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/ai;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 265
    int-to-float v2, p3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWidth(F)V

    .line 266
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    .line 267
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 268
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 270
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

    invoke-direct {v1, p1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 271
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->a(Z)V

    .line 272
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 273
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 275
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v3, "Cancel"

    invoke-direct {v2, v3, p1}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 276
    new-instance v3, Lcom/nianticproject/ingress/common/factionchoice/am;

    invoke-direct {v3, p0}, Lcom/nianticproject/ingress/common/factionchoice/am;-><init>(Lcom/nianticproject/ingress/common/factionchoice/al;)V

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/ui/widget/f;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 282
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 283
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v3, "Confirm"

    invoke-direct {v2, v3, p1}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 284
    new-instance v3, Lcom/nianticproject/ingress/common/factionchoice/an;

    invoke-direct {v3, p0, v1}, Lcom/nianticproject/ingress/common/factionchoice/an;-><init>(Lcom/nianticproject/ingress/common/factionchoice/al;Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;)V

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/ui/widget/f;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 300
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->f()Lcom/a/a/c;

    .line 301
    return-object v0
.end method
