.class public final Lcom/nianticproject/ingress/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/NemesisActivity;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/NemesisActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/NemesisActivity;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/f;->a:Lcom/nianticproject/ingress/NemesisActivity;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/f;->a:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/j/a;->a(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/f;->a:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/NemesisActivity;->a(Ljava/lang/String;)V

    .line 27
    return-void
.end method
