.class final Lcom/nianticproject/ingress/common/q/b/v;
.super Lcom/nianticproject/ingress/common/q/b/g;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/b/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/q/b/g;-><init>()V

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/v;->a:Ljava/util/ArrayList;

    .line 190
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/q/b/v;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/v;->a:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/nianticproject/ingress/common/q/b/w;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/b/w;->a()Lcom/nianticproject/ingress/common/q/c;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/nianticproject/ingress/common/q/b/g;->a(Lcom/nianticproject/ingress/common/q/c;)V

    .line 194
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method
