.class final Lcom/nianticproject/ingress/common/factionchoice/ar;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/ai;

.field final synthetic b:Lcom/nianticproject/ingress/common/factionchoice/aq;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/aq;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/ar;->b:Lcom/nianticproject/ingress/common/factionchoice/aq;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/factionchoice/ar;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 156
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/ar;->b:Lcom/nianticproject/ingress/common/factionchoice/aq;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/factionchoice/aq;->a:Lcom/nianticproject/ingress/common/factionchoice/aj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/ar;->a:Lcom/nianticproject/ingress/shared/ai;

    new-instance v2, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;

    invoke-direct {v2}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;-><init>()V

    sget-object v3, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->NONE:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    iput-object v3, v2, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->close:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    iput v4, v2, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->windowAlignment:I

    iput-boolean v4, v2, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->shrinkHeightToFit:Z

    iput-boolean v4, v2, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->fullModal:Z

    new-instance v3, Lcom/nianticproject/ingress/common/factionchoice/al;

    invoke-direct {v3, v0, v2, v1}, Lcom/nianticproject/ingress/common/factionchoice/al;-><init>(Lcom/nianticproject/ingress/common/factionchoice/aj;Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;Lcom/nianticproject/ingress/shared/ai;)V

    new-instance v2, Lcom/nianticproject/ingress/common/factionchoice/ao;

    invoke-direct {v2, v0, v1}, Lcom/nianticproject/ingress/common/factionchoice/ao;-><init>(Lcom/nianticproject/ingress/common/factionchoice/aj;Lcom/nianticproject/ingress/shared/ai;)V

    invoke-virtual {v3, v2}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->a(Lcom/nianticproject/ingress/common/ui/elements/aa;)V

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/factionchoice/aj;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 157
    return-void
.end method
