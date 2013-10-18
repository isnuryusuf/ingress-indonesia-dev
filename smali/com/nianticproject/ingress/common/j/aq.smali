.class public final Lcom/nianticproject/ingress/common/j/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/ar;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/j/ap;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/ap;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/nianticproject/ingress/common/j/ap;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/j/ap;-><init>(Lcom/nianticproject/ingress/common/j/ap;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/aq;->a:Lcom/nianticproject/ingress/common/j/ap;

    .line 109
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/j/ap;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/aq;->a:Lcom/nianticproject/ingress/common/j/ap;

    return-object v0
.end method
