.class final Lcom/nianticproject/ingress/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/af;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/dj;

.field private final b:Lcom/nianticproject/ingress/dn;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/dj;Lcom/nianticproject/ingress/dn;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/nianticproject/ingress/do;->a:Lcom/nianticproject/ingress/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p2, p0, Lcom/nianticproject/ingress/do;->b:Lcom/nianticproject/ingress/dn;

    .line 263
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/nianticproject/ingress/do;->a:Lcom/nianticproject/ingress/dj;

    invoke-static {v0}, Lcom/nianticproject/ingress/dj;->d(Lcom/nianticproject/ingress/dj;)Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/do;->b:Lcom/nianticproject/ingress/dn;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method
