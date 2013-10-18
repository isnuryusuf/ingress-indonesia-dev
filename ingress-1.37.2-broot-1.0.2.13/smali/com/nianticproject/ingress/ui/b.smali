.class final Lcom/nianticproject/ingress/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/ui/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/ui/a;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/nianticproject/ingress/ui/b;->a:Lcom/nianticproject/ingress/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/b;->a:Lcom/nianticproject/ingress/ui/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/a;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/ui/d;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/b;->a:Lcom/nianticproject/ingress/ui/a;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/a;->a(Lcom/nianticproject/ingress/ui/a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/ui/d;->a(I)V

    .line 193
    return-void
.end method
