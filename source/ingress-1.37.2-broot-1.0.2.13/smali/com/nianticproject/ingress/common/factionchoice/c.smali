.class final Lcom/nianticproject/ingress/common/factionchoice/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/factionchoice/az;

.field private b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private c:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

.field private d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private e:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

.field private f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

.field private g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private h:F


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/az;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->h:F

    .line 29
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->a:Lcom/nianticproject/ingress/common/factionchoice/az;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/factionchoice/c;)Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->c:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/factionchoice/c;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x4170

    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clear()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v1, "jarvis-terminal"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    const-string/jumbo v2, "*\n*\n*\nCOM.SATLINK/INIT.\nCOM.RECEIV/TRAN.\nAUTH.SIGNAL/EXEC\nERROR/DIVBY0\nERROR/MEMLOC.AEH1C0.BUFFER-OVERRUN\nSTOR,PATCH.J --> AEH1C0\nMOV DX,9\nDIV CL\nXOR AH,11\nPOP DX\nEXTRACT->MEMLOC.AEH1C0\nRETURN/EXTRACTED PATCH.JARVIS"

    const/high16 v3, 0x4270

    invoke-direct {v1, v2, v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;F)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->e:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->e:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->setWrap(Z)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, "EXEC->PATCH.JARVIS.INIT"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v3, "jarvis-terminal-red"

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->e:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->p()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->e:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->layout()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 51
    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v3, "Authenticating operative code"

    const-string/jumbo v0, "fc-message"

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 57
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 59
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->c:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->c:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x4248

    invoke-virtual {v0, v1}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    .line 66
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 67
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 68
    return-void
.end method

.method public final a(F)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->e:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->h:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->h:F

    .line 114
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->h:F

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clear()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v1, "jarvis-terminal"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    const-string/jumbo v2, "*\n*\n*\nJMP  0x1F\nPOPL %ESI\nMOVL %ESI,0x8(%ESI)\nXORL %EAX,%EAX\nMOVB %EAX,0x7(%ESI)\nMOVL %EAX,0xC(%ESI)\nMOVB $0xB,%AL\nMOVL %ESI,%EBX\nLEAL 0x8(%ESI),%ECX\nLEAL 0xC(%ESI),%EDX\nINT  $0x80\nXORL %EBX,%EBX\nMOVL %EBX,%EAX\nINC  %EAX\nINT  $0x80\nCALL -0x24"

    const/high16 v3, 0x4270

    invoke-direct {v1, v2, v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;F)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->setWrap(Z)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->a:Lcom/nianticproject/ingress/common/factionchoice/az;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/factionchoice/az;->c()V

    .line 126
    :cond_3
    return v4
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/c;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->remove()Z

    .line 132
    return-void
.end method
