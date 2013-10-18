.class final Lcom/nianticproject/ingress/m/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/m/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/m/a;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/nianticproject/ingress/m/c;->a:Lcom/nianticproject/ingress/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nianticproject/ingress/m/c;->a:Lcom/nianticproject/ingress/m/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/m/a;->a(Lcom/nianticproject/ingress/m/a;)Lcom/nianticproject/ingress/NemesisActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/o/a;->b(Landroid/content/Context;)V

    .line 134
    return-void
.end method
