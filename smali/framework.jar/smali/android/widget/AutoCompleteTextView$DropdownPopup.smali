.class Landroid/widget/AutoCompleteTextView$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "AutoCompleteTextView.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "xiaohongzhi@SDK.Feature.change ListPopupWindow to meizu style DropdownPopup"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mDropDownDivider:Landroid/graphics/drawable/Drawable;

.field private mDropDownPaddingEnd:I

.field private mDropDownPaddingStart:I

.field private mDropDownPaddingTop:I

.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I

    .prologue
    .line 1374
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->this$0:Landroid/widget/AutoCompleteTextView;

    .line 1375
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1376
    return-void
.end method


# virtual methods
.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1404
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownDivider:Landroid/graphics/drawable/Drawable;

    .line 1405
    return-void
.end method

.method public setPaddingEnd(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 1396
    iput p1, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingEnd:I

    .line 1397
    return-void
.end method

.method public setPaddingStart(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 1392
    iput p1, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingStart:I

    .line 1393
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 1400
    iput p1, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingTop:I

    .line 1401
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1380
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1381
    .local v0, "buildDropDown":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView$DropdownPopup;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setMzClippingEnabled(Z)V

    .line 1382
    iget v2, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingStart:I

    iget v4, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingTop:I

    iget v5, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownPaddingEnd:I

    invoke-virtual {p0, v2, v4, v5, v3}, Landroid/widget/AutoCompleteTextView$DropdownPopup;->setDropDownListViewPadding(IIII)V

    .line 1383
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1385
    if-eqz v0, :cond_0

    .line 1386
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1387
    .local v1, "dropdownList":Landroid/widget/ListView;
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView$DropdownPopup;->mDropDownDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1389
    .end local v1    # "dropdownList":Landroid/widget/ListView;
    :cond_0
    return-void

    .end local v0    # "buildDropDown":Z
    :cond_1
    move v0, v3

    .line 1380
    goto :goto_0
.end method
