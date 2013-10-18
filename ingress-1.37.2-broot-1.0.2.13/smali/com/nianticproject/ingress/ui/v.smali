.class final Lcom/nianticproject/ingress/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/text/Spannable;

.field final synthetic c:Lcom/nianticproject/ingress/ui/u;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/ui/u;Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nianticproject/ingress/ui/v;->c:Lcom/nianticproject/ingress/ui/u;

    iput-object p2, p0, Lcom/nianticproject/ingress/ui/v;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/nianticproject/ingress/ui/v;->b:Landroid/text/Spannable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/v;->c:Lcom/nianticproject/ingress/ui/u;

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/u;->a(Lcom/nianticproject/ingress/ui/u;)Z

    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/v;->c:Lcom/nianticproject/ingress/ui/u;

    iget-object v0, p0, Lcom/nianticproject/ingress/ui/v;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/v;->b:Landroid/text/Spannable;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/ui/u;->a(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 55
    return-void
.end method
