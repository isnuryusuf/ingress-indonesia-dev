.class public Lcom/nianticproject/ingress/n/j;
.super Lcom/nianticproject/ingress/n/p;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/n/j;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/n/j;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nianticproject/ingress/n/p;-><init>()V

    .line 75
    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/shared/PregameStatus;)Lcom/nianticproject/ingress/n/j;
    .locals 4
    .parameter

    .prologue
    .line 66
    new-instance v0, Lcom/nianticproject/ingress/n/j;

    invoke-direct {v0}, Lcom/nianticproject/ingress/n/j;-><init>()V

    .line 68
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 69
    invoke-static {p0}, Lcom/nianticproject/ingress/n/j;->b(Lcom/nianticproject/ingress/shared/PregameStatus;)Ljava/lang/String;

    move-result-object v2

    .line 70
    const-string/jumbo v3, "pregame_status_json"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/j;->e(Landroid/os/Bundle;)V

    .line 72
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/PregameStatus;
    .locals 3
    .parameter

    .prologue
    .line 57
    :try_start_0
    sget-object v0, Lcom/nianticproject/ingress/common/o/c;->b:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/shared/PregameStatus;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonParser;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/PregameStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 60
    sget-object v1, Lcom/nianticproject/ingress/n/j;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Exception while re-inflating PregameStatus"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/widget/Button;Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;Lcom/nianticproject/ingress/n/q;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_0
    if-eqz p2, :cond_1

    .line 184
    new-instance v0, Lcom/nianticproject/ingress/n/l;

    invoke-direct {v0, p1, p2}, Lcom/nianticproject/ingress/n/l;-><init>(Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;Lcom/nianticproject/ingress/n/q;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_1
    return-void
.end method

.method private static b(Lcom/nianticproject/ingress/shared/PregameStatus;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 40
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 43
    :try_start_0
    sget-object v0, Lcom/nianticproject/ingress/common/o/c;->b:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->flush()V

    .line 46
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 49
    sget-object v2, Lcom/nianticproject/ingress/n/j;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Exception while flattening PregameStatus"

    invoke-virtual {v2, v0, v3}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 107
    const v0, 0x7f03001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 108
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/j;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "pregame_status_json"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/nianticproject/ingress/n/j;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/PregameStatus;

    move-result-object v0

    .line 110
    if-nez v0, :cond_0

    new-instance v0, Lcom/nianticproject/ingress/shared/PregameStatus;

    sget-object v1, Lcom/nianticproject/ingress/shared/y;->a:Lcom/nianticproject/ingress/shared/y;

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/nianticproject/ingress/shared/PregameStatus;-><init>(Lcom/nianticproject/ingress/shared/y;Ljava/lang/String;Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;)V

    :cond_0
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/PregameStatus;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/PregameStatus;->c()Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/PregameStatus;->d()Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    move-result-object v1

    sget-object v4, Lcom/nianticproject/ingress/n/k;->b:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/PregameStatus;->a()Lcom/nianticproject/ingress/shared/y;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/y;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_1
    const v3, 0x7f09003b

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/n/j;->b(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :goto_0
    if-nez v2, :cond_7

    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/nianticproject/ingress/n/j;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/PregameStatus;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-nez v1, :cond_2

    const v1, 0x7f09003d

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/n/j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/PregameStatus;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    move-result-object v1

    :cond_2
    new-instance v2, Lcom/nianticproject/ingress/shared/PregameStatus;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/PregameStatus;->a()Lcom/nianticproject/ingress/shared/y;

    move-result-object v0

    invoke-direct {v2, v0, v4, v3, v1}, Lcom/nianticproject/ingress/shared/PregameStatus;-><init>(Lcom/nianticproject/ingress/shared/y;Ljava/lang/String;Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;)V

    move-object v1, v2

    :goto_2
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/j;->H()Lcom/nianticproject/ingress/n/q;

    move-result-object v4

    const v0, 0x1020014

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/PregameStatus;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080065

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/PregameStatus;->c()Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/PregameStatus;->d()Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    move-result-object v2

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    const v0, 0x7f080063

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f080064

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v3, v4}, Lcom/nianticproject/ingress/n/j;->a(Landroid/widget/Button;Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;Lcom/nianticproject/ingress/n/q;)V

    invoke-static {v1, v2, v4}, Lcom/nianticproject/ingress/n/j;->a(Landroid/widget/Button;Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;Lcom/nianticproject/ingress/n/q;)V

    :cond_3
    :goto_3
    return-object v5

    :pswitch_0
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    new-instance v1, Lcom/nianticproject/ingress/shared/PregameStatus;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/PregameStatus;->a()Lcom/nianticproject/ingress/shared/y;

    move-result-object v0

    new-instance v2, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;

    sget-object v4, Lcom/nianticproject/ingress/shared/z;->a:Lcom/nianticproject/ingress/shared/z;

    invoke-direct {v2, v7, v4, v7}, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/shared/z;Ljava/util/Map;)V

    invoke-direct {v1, v0, v3, v2, v7}, Lcom/nianticproject/ingress/shared/PregameStatus;-><init>(Lcom/nianticproject/ingress/shared/y;Ljava/lang/String;Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;)V

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_3

    invoke-static {v0, v1, v4}, Lcom/nianticproject/ingress/n/j;->a(Landroid/widget/Button;Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;Lcom/nianticproject/ingress/n/q;)V

    goto :goto_3

    :cond_6
    move-object v1, v3

    goto :goto_4

    :cond_7
    move-object v3, v2

    goto :goto_1

    :cond_8
    move-object v4, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string/jumbo v0, "PregameStatusDialogFragment"

    return-object v0
.end method
