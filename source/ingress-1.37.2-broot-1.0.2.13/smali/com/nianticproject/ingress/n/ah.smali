.class final Lcom/nianticproject/ingress/n/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/nianticproject/ingress/n/af;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/n/af;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nianticproject/ingress/n/ah;->c:Lcom/nianticproject/ingress/n/af;

    iput-object p2, p0, Lcom/nianticproject/ingress/n/ah;->a:Landroid/widget/Button;

    iput-object p3, p0, Lcom/nianticproject/ingress/n/ah;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nianticproject/ingress/n/ah;->a:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/nianticproject/ingress/n/ah;->b:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 72
    return-void
.end method
