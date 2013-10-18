.class final Lcom/nianticproject/ingress/common/scanner/modes/ay;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nianticproject/ingress/common/scanner/modes/aw;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/aw;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 700
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ay;->b:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    iput p2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ay;->a:I

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
    .line 703
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ay;->b:Lcom/nianticproject/ingress/common/scanner/modes/aw;

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ay;->a:I

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->d(Lcom/nianticproject/ingress/common/scanner/modes/aw;I)V

    .line 704
    return-void
.end method
