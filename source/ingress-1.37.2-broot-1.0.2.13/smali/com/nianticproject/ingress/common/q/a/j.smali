.class public final Lcom/nianticproject/ingress/common/q/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/nianticproject/ingress/common/q/a/c;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/a/j;->a:Ljava/util/ArrayList;

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/a/j;->b:Lcom/nianticproject/ingress/common/q/a/c;

    .line 158
    return-void
.end method


# virtual methods
.method final a(Lcom/nianticproject/ingress/common/q/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/nianticproject/ingress/common/q/a/j;->b:Lcom/nianticproject/ingress/common/q/a/c;

    .line 202
    return-void
.end method

.method final a(Lcom/nianticproject/ingress/common/q/a/k;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/a/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method
