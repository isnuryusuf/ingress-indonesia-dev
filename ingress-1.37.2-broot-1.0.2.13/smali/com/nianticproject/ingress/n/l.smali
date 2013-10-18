.class final Lcom/nianticproject/ingress/n/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

.field private final b:Lcom/nianticproject/ingress/n/q;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;Lcom/nianticproject/ingress/n/q;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/nianticproject/ingress/n/l;->a:Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    .line 81
    iput-object p2, p0, Lcom/nianticproject/ingress/n/l;->b:Lcom/nianticproject/ingress/n/q;

    .line 82
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/n/l;->a:Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;->c()Ljava/util/Map;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 90
    :cond_0
    sget-object v1, Lcom/nianticproject/ingress/n/k;->a:[I

    iget-object v2, p0, Lcom/nianticproject/ingress/n/l;->a:Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;->b()Lcom/nianticproject/ingress/shared/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/z;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/n/l;->b:Lcom/nianticproject/ingress/n/q;

    invoke-interface {v0}, Lcom/nianticproject/ingress/n/q;->g()V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/n/l;->b:Lcom/nianticproject/ingress/n/q;

    invoke-interface {v0}, Lcom/nianticproject/ingress/n/q;->d()V

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v1, p0, Lcom/nianticproject/ingress/n/l;->b:Lcom/nianticproject/ingress/n/q;

    const-string/jumbo v2, "URI"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/n/q;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
