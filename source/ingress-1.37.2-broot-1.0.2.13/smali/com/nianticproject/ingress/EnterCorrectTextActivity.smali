.class public Lcom/nianticproject/ingress/EnterCorrectTextActivity;
.super Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/nianticproject/ingress/bb;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;-><init>()V

    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/bb;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    const-class v0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;

    invoke-static {p0, v0, p1}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 70
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 71
    const-string/jumbo v0, "text_type"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 72
    const-string/jumbo v0, "initial_text"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    return-object v1

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/EnterCorrectTextActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/EnterCorrectTextActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/EnterCorrectTextActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/EnterCorrectTextActivity;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/ba;->a:[I

    iget-object v2, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->e:Lcom/nianticproject/ingress/bb;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/bb;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v3, v0, v3, v3}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic d(Lcom/nianticproject/ingress/EnterCorrectTextActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->finish()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->j:Landroid/widget/Button;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 257
    return-void

    .line 256
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->g:Landroid/widget/ImageView;

    invoke-static {p0, v1, v0}, Lcom/nianticproject/ingress/ec;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 262
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    const-string/jumbo v0, "EnterCorrectTextActivity"

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->h()V

    .line 216
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    if-eqz p2, :cond_1

    .line 204
    iget-object v0, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->g:Landroid/widget/ImageView;

    invoke-static {p0, v0, p2}, Lcom/nianticproject/ingress/ec;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->h()V

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/nianticproject/ingress/ba;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->e:Lcom/nianticproject/ingress/bb;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/bb;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 273
    invoke-super {p0}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 268
    :pswitch_0
    const v0, 0x7f0900a6

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    :pswitch_1
    const v0, 0x7f0900a7

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lcom/nianticproject/ingress/ba;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->e:Lcom/nianticproject/ingress/bb;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/bb;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 285
    invoke-super {p0}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 280
    :pswitch_0
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :pswitch_1
    const v0, 0x7f0900a2

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 107
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->setContentView(I)V

    .line 111
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->g:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->h:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->i:Landroid/widget/EditText;

    .line 114
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->j:Landroid/widget/Button;

    .line 115
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    invoke-virtual {p0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->d:Ljava/lang/String;

    .line 121
    const-string/jumbo v1, "text_type"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/bb;

    iput-object v1, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->e:Lcom/nianticproject/ingress/bb;

    .line 122
    const-string/jumbo v1, "initial_text"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->f:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/aw;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/aw;-><init>(Lcom/nianticproject/ingress/EnterCorrectTextActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    .line 144
    sget-object v2, Lcom/nianticproject/ingress/ba;->a:[I

    iget-object v3, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->e:Lcom/nianticproject/ingress/bb;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/bb;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 164
    :goto_2
    iget-object v2, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 165
    iget-object v1, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    iget-object v1, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->i:Landroid/widget/EditText;

    new-instance v2, Lcom/nianticproject/ingress/ax;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/ax;-><init>(Lcom/nianticproject/ingress/EnterCorrectTextActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 179
    iget-object v1, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->j:Landroid/widget/Button;

    new-instance v2, Lcom/nianticproject/ingress/ay;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/ay;-><init>(Lcom/nianticproject/ingress/EnterCorrectTextActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    new-instance v1, Lcom/nianticproject/ingress/az;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/az;-><init>(Lcom/nianticproject/ingress/EnterCorrectTextActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void

    .line 120
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->h()V

    goto :goto_1

    .line 146
    :pswitch_0
    iget-object v2, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->h:Landroid/widget/TextView;

    const v3, 0x7f09009d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v2, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->i:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 148
    iget-object v2, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->i:Landroid/widget/EditText;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 149
    iget-object v2, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->i:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    or-int/lit16 v1, v1, 0x2000

    .line 152
    goto :goto_2

    .line 154
    :pswitch_1
    iget-object v2, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->h:Landroid/widget/TextView;

    const v3, 0x7f09009e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v2, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 156
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 157
    iget-object v3, p0, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    const v2, 0x24000

    or-int/2addr v1, v2

    goto :goto_2

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Lcom/nianticproject/ingress/curation/AbstractPortalCurationActivity;->onResume()V

    .line 197
    invoke-direct {p0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->g()V

    .line 198
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/nianticproject/ingress/EnterCorrectTextActivity;->g()V

    .line 252
    return-void
.end method
